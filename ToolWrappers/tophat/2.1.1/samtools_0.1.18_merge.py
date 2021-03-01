from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Samtools_0_1_18_Merge_V0_1_0 = CommandToolBuilder(tool="samtools_0.1.18_merge", base_command=["samtools_0.1.18", "merge"], inputs=[ToolInput(tag="in_sort_read_names", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="sort by read names")), ToolInput(tag="in_attach_tag_inferred", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="attach RG tag (inferred from file names)")), ToolInput(tag="in_uncompressed_bam_output", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="uncompressed BAM output")), ToolInput(tag="in_overwrite_output_bam", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="overwrite the output BAM if exist")), ToolInput(tag="in_compress_level", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="compress level 1")), ToolInput(tag="in_merge_file_str", input_type=File(optional=True), prefix="-R", doc=InputDocumentation(doc="merge file in the specified region STR [all]")), ToolInput(tag="in_copy_header_outbam", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="copy the header in FILE to <out.bam> [in1.bam]")), ToolInput(tag="in_nr", input_type=Boolean(optional=True), prefix="-nr", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_bam", input_type=Int(), position=4, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_copy_header_outbam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_copy_header_outbam", type_hint=File()), doc=OutputDocumentation(doc="copy the header in FILE to <out.bam> [in1.bam]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_0_1_18_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

