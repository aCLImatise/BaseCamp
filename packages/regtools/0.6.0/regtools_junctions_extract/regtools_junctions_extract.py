from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Regtools_Junctions_Extract_V0_1_0 = CommandToolBuilder(tool="regtools_junctions_extract", base_command=["regtools", "junctions", "extract"], inputs=[ToolInput(tag="in_minimum_anchor_length", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Minimum anchor length. Junctions which satisfy a minimum\nanchor length on both sides are reported. [8]")), ToolInput(tag="in_minimum_intron_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum intron length. [70]")), ToolInput(tag="in_maximum_intron_length", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="Maximum intron length. [500000]")), ToolInput(tag="in_file_write_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="The file to write output to. [STDOUT]")), ToolInput(tag="in_region_identify_bam", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="The region to identify junctions\nin 'chr:start-end' format. Entire BAM by default.")), ToolInput(tag="in_strand_specificity_firststrandrf", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Strand specificity of RNA library preparation\n(0 = unstranded, 1 = first-strand/RF, 2, = second-strand/FR). REQUIRED")), ToolInput(tag="in_tag_used_label", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Tag used in bam to label strand. [XS]")), ToolInput(tag="in_indexed_alignments_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_write_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_output", type_hint=File()), doc=OutputDocumentation(doc="The file to write output to. [STDOUT]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Regtools_Junctions_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

