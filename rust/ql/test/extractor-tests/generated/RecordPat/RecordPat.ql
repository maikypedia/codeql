// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  RecordPat x, string hasResolvedPath, string hasResolvedCrateOrigin, string hasPath,
  string hasRecordPatFieldList
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasResolvedPath() then hasResolvedPath = "yes" else hasResolvedPath = "no") and
  (
    if x.hasResolvedCrateOrigin()
    then hasResolvedCrateOrigin = "yes"
    else hasResolvedCrateOrigin = "no"
  ) and
  (if x.hasPath() then hasPath = "yes" else hasPath = "no") and
  if x.hasRecordPatFieldList() then hasRecordPatFieldList = "yes" else hasRecordPatFieldList = "no"
select x, "hasResolvedPath:", hasResolvedPath, "hasResolvedCrateOrigin:", hasResolvedCrateOrigin,
  "hasPath:", hasPath, "hasRecordPatFieldList:", hasRecordPatFieldList
