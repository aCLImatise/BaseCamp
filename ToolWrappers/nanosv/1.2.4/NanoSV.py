from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Nanosv_V0_1_0 = CommandToolBuilder(tool="NanoSV", base_command=["NanoSV"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads [default: 4]")), ToolInput(tag="in_samba_mba", input_type=File(optional=True), prefix="--sambamba", doc=InputDocumentation(doc="Give the full path to the sambamba or samtools\nexecutable [default: sambamba ]")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Give the full path to your own ini file [ default:\nconfig.ini ]")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Give the full path to your own bed file, used for\ncoverage depth calculations [default: human_hg19.bed ]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Give the full path to the output vcf file [default:\n<stdout> ]")), ToolInput(tag="in_snp_file", input_type=File(optional=True), prefix="--snp_file", doc=InputDocumentation(doc="Give full path to the SNP variant file for phasing.\nSupporting file formats: BED and VCF"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Give the full path to the output vcf file [default:\n<stdout> ]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanosv_V0_1_0().translate("wdl", allow_empty_container=True)

