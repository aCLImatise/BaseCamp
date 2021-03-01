from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sj_Visualizer_Pl_V0_1_0 = CommandToolBuilder(tool="sj_visualizer.pl", base_command=["sj_visualizer.pl"], inputs=[ToolInput(tag="in_splice_junctions_mapped", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Splice junctions from mapped RNA-seq data in BED6 format")), ToolInput(tag="in_chromosome_sizes_files", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Chromosome sizes files")), ToolInput(tag="in_convert_resuting_files", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Convert resuting BED6 files to bigBed format")), ToolInput(tag="in_minimum_read_coverage", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Minimum read coverage for a splice junction. Only splice junctions\nthat are supported by at least this number of reads are considered.")), ToolInput(tag="in_expand_splice_junctions", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Expand splice junctions by a window of this size on both sides")), ToolInput(tag="in_filter_circular_splice", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Filter circular splice junctions")), ToolInput(tag="in_relative_output_path", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Relative output path")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_relative_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_relative_output_path", type_hint=File()), doc=OutputDocumentation(doc="Relative output path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sj_Visualizer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

