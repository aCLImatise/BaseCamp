from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Mergestr_V0_1_0 = CommandToolBuilder(tool="mergeSTR", base_command=["mergeSTR"], inputs=[ToolInput(tag="in_v_cfs", input_type=String(optional=True), prefix="--vcfs", doc=InputDocumentation(doc="Comma-separated list of VCF files to merge (must be\nsorted, bgzipped and indexed)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Prefix to name output files")), ToolInput(tag="in_vcf_type", input_type=String(optional=True), prefix="--vcftype", doc=InputDocumentation(doc="Options=['gangstr', 'advntr', 'hipstr', 'eh',\n'popstr'] (default: auto)")), ToolInput(tag="in_update_sample_from_file", input_type=Boolean(optional=True), prefix="--update-sample-from-file", doc=InputDocumentation(doc="Use file names, rather than sample header names, when\nmerging (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out extra info (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print out anything (default: False)")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_merging", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_tr", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_generated", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_by", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/trtools:4.0.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergestr_V0_1_0().translate("wdl")

