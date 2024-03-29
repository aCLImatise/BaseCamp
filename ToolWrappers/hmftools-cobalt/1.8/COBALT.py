from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, String

Cobalt_V0_1_0 = CommandToolBuilder(tool="COBALT", base_command=["COBALT"], inputs=[ToolInput(tag="in_min_quality", input_type=Int(optional=True), prefix="-min_quality", doc=InputDocumentation(doc="Min quality [10]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="-output_dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_ref_genome", input_type=File(optional=True), prefix="-ref_genome", doc=InputDocumentation(doc="Path to reference genome fasta file if\nusing CRAM files")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="-reference", doc=InputDocumentation(doc="Name of reference sample")), ToolInput(tag="in_reference_bam", input_type=File(optional=True), prefix="-reference_bam", doc=InputDocumentation(doc="Path to reference bam file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Number of threads [4]")), ToolInput(tag="in_tumor", input_type=String(optional=True), prefix="-tumor", doc=InputDocumentation(doc="Name of tumor sample")), ToolInput(tag="in_tumor_bam", input_type=File(optional=True), prefix="-tumor_bam", doc=InputDocumentation(doc="Path to tumor bam file")), ToolInput(tag="in_validation_stringency", input_type=String(optional=True), prefix="-validation_stringency", doc=InputDocumentation(doc="SAM validation strategy: STRICT, SILENT,\nLENIENT [STRICT]\n")), ToolInput(tag="in_count_bam_lines_application", input_type=String(), position=0, doc=InputDocumentation(doc="-gc_profile <arg>              Location of GC Profile"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobalt_V0_1_0().translate("wdl", allow_empty_container=True)

