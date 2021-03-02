from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Alleyoop_Utrrates_V0_1_0 = CommandToolBuilder(tool="alleyoop_utrrates", base_command=["alleyoop", "utrrates"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_min_base_quality", input_type=Int(optional=True), prefix="--min-basequality", doc=InputDocumentation(doc="Minimal base quality for SNPs (default: 27)")), ToolInput(tag="in_multi_tc_stringency", input_type=Int(optional=True), prefix="--multiTCStringency", doc=InputDocumentation(doc="Thread number (default: 1)")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file")), ToolInput(tag="in_max_read_length", input_type=Int(optional=True), prefix="--max-read-length", doc=InputDocumentation(doc="Max read length in BAM file (default: None)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Bam file(s)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Utrrates_V0_1_0().translate("wdl", allow_empty_container=True)

