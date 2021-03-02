from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int

Aquila_Stlfr_Phasing_All_Variants_V0_1_0 = CommandToolBuilder(tool="Aquila_stLFR_phasing_all_variants", base_command=["Aquila_stLFR_phasing_all_variants"], inputs=[ToolInput(tag="in_assembly_vcf", input_type=File(optional=True), prefix="--assembly_vcf", doc=InputDocumentation(doc="vcf file")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), prefix="--vcf_file", doc=InputDocumentation(doc="vcf file")), ToolInput(tag="in_chr_start", input_type=String(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from")), ToolInput(tag="in_chr_end", input_type=String(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store output")), ToolInput(tag="in_assembly_dir", input_type=Directory(optional=True), prefix="--assembly_dir", doc=InputDocumentation(doc="folder to store assembled results")), ToolInput(tag="in_block_len_use", input_type=String(optional=True), prefix="--block_len_use", doc=InputDocumentation(doc="phase block len threshold\n")), ToolInput(tag="in_x_zhou_one_five_atcs_dot_stanford_dot_edu", input_type=Int(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to store output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Stlfr_Phasing_All_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

