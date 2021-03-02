from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Aquila_Phasing_All_Variants_V0_1_0 = CommandToolBuilder(tool="Aquila_phasing_all_variants", base_command=["Aquila_phasing_all_variants"], inputs=[ToolInput(tag="in_assembly_vcf", input_type=File(optional=True), prefix="--assembly_vcf", doc=InputDocumentation(doc="Required parameter, Aquila assembly based VCF file,\n'Aquila_final_sorted.vcf', called by\n'Aquila_assembly_based_variants_call.py'")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), prefix="--vcf_file", doc=InputDocumentation(doc="Required parameter, VCF file called by FreeBayes")), ToolInput(tag="in_sample_name", input_type=Int(optional=True), prefix="--sample_name", doc=InputDocumentation(doc="sample name, you can define your own,for example: L1,\ndefault = sample_name")), ToolInput(tag="in_chr_start", input_type=Int(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from, default = 1")), ToolInput(tag="in_chr_end", input_type=Int(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by, default = 23")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store output, default =\n./Aquila_Phasing_Results")), ToolInput(tag="in_assembly_dir", input_type=Directory(optional=True), prefix="--assembly_dir", doc=InputDocumentation(doc="Required parameter, folder to store Aquila assembly\nresults at Aquila assembly steps")), ToolInput(tag="in_block_len_use", input_type=Int(optional=True), prefix="--block_len_use", doc=InputDocumentation(doc="phase block len threshold, default = 100000 (100kb),\nif you change it, make sure it's consistent with what\nyou define at Aquila assembly steps\n")), ToolInput(tag="in_x_zhou_one_five_atcs_dot_stanford_dot_edu", input_type=Int(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to store output, default =\n./Aquila_Phasing_Results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Phasing_All_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

