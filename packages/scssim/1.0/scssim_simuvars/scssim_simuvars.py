from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Scssim_Simuvars_V0_1_0 = CommandToolBuilder(tool="scssim_simuvars", base_command=["scssim", "simuvars"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference file (.fasta)")), ToolInput(tag="in_snp", input_type=File(optional=True), prefix="--snp", doc=InputDocumentation(doc="SNP file containing the SNPs to be simulated [Default:null]")), ToolInput(tag="in_var", input_type=File(optional=True), prefix="--var", doc=InputDocumentation(doc="variation file containing the genomic variations to be simulated [Default:null]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file (.fasta) to save generated sequences"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file (.fasta) to save generated sequences"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scssim_Simuvars_V0_1_0().translate("wdl", allow_empty_container=True)

