from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Cfsan_Snp_Pipeline_Snp_Matrix_V0_1_0 = CommandToolBuilder(tool="cfsan_snp_pipeline_snp_matrix", base_command=["cfsan_snp_pipeline", "snp_matrix"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result file already exists\nand is newer than inputs (default: False)")), ToolInput(tag="in_cons_filename", input_type=File(optional=True), prefix="--consFileName", doc=InputDocumentation(doc="File name of the previously created consensus SNP call\nfile which must exist in each of the sample\ndirectories (default: consensus.fasta)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Relative or absolute path to the SNP\nmatrix file (default: snpma.fasta)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Relative or absolute path to the SNP\nmatrix file (default: snpma.fasta)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfsan_Snp_Pipeline_Snp_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

