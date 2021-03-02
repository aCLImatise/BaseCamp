from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Htsbox_Vcfview_V0_1_0 = CommandToolBuilder(tool="htsbox_vcfview", base_command=["htsbox", "vcfview"], inputs=[ToolInput(tag="in_output_in_bcf", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="output in BCF")), ToolInput(tag="in_input_is_vcf", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="input is VCF")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="compression level [0]")), ToolInput(tag="in_list_reference_lengths", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="list of reference names and lengths [null]")), ToolInput(tag="in_str_list_started", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="/STR  list of samples (STR if started with ':'; FILE otherwise) [null]")), ToolInput(tag="in_drop_genotype_information", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="drop individual genotype information")), ToolInput(tag="in_exclude_indels", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="exclude INDELs")), ToolInput(tag="in_vcf_view", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Vcfview_V0_1_0().translate("wdl", allow_empty_container=True)

