from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Hicfindrestsite_V0_1_0 = CommandToolBuilder(tool="hicFindRestSite", base_command=["hicFindRestSite"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to fasta file for the organism genome.")), ToolInput(tag="in_search_pattern", input_type=Int(optional=True), prefix="--searchPattern", doc=InputDocumentation(doc="Search pattern. For example, for HindIII this pattern\nis 'AAGCTT'. Both, forward and reverse strand are\nsearched for a match. The pattern is a regexp and can\ncontain regexp specif syntax (see\nhttps://docs.python.org/2/library/re.html). For\nexample the patternCG..GC will find all occurrence of\nCG followed by any two bases and then GC.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Name for the resulting bed file."))], outputs=[], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicfindrestsite_V0_1_0().translate("wdl")

