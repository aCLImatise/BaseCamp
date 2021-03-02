from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Create_Snp_Reference_Seq_Py_V0_1_0 = CommandToolBuilder(tool="create_snp_reference_seq.py", base_command=["create_snp_reference_seq.py"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result file already exists\nand is newer than inputs (default: False)")), ToolInput(tag="in_snp_list_file", input_type=File(optional=True), prefix="--snpListFile", doc=InputDocumentation(doc="Relative or absolute path to the SNP list file\n(default: snplist.txt)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Relative or absolute path to the SNP\nreference sequence file (default: referenceSNP.fasta)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_cfsan_snp_pipeline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_snp_reference", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Relative or absolute path to the SNP\nreference sequence file (default: referenceSNP.fasta)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Snp_Reference_Seq_Py_V0_1_0().translate("wdl", allow_empty_container=True)

