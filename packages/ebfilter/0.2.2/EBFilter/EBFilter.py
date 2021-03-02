from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Ebfilter_V0_1_0 = CommandToolBuilder(tool="EBFilter", base_command=["EBFilter"], inputs=[ToolInput(tag="in_format_annovar_tsv", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="the format of mutation file vcf or annovar (tsv)")), ToolInput(tag="in_threshold_mapping_quality", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="threshold for mapping quality for calculating base\ncounts")), ToolInput(tag="in_threshold_base_quality", input_type=String(optional=True), prefix="-Q", doc=InputDocumentation(doc="threshold for base quality for calculating base counts")), ToolInput(tag="in_ff", input_type=String(optional=True), prefix="--ff", doc=InputDocumentation(doc="skip reads with mask bits set")), ToolInput(tag="in_l_option", input_type=Boolean(optional=True), prefix="--loption", doc=InputDocumentation(doc="use samtools mpileup -l option")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="restrict the chromosomal region for mutation. active\nonly if loption is on")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="keep intermediate files")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="the path to the mutation file")), ToolInput(tag="in_target_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="the path to the target bam file")), ToolInput(tag="in_control_bam_list_dot_txt", input_type=String(), position=2, doc=InputDocumentation(doc="the list of paths to control bam files")), ToolInput(tag="in_output_dot_vcf", input_type=String(), position=3, doc=InputDocumentation(doc="the path to the output")), ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="-t thread_num         the number of threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebfilter_V0_1_0().translate("wdl", allow_empty_container=True)

