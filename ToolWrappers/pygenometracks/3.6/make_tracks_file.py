from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Make_Tracks_File_V0_1_0 = CommandToolBuilder(tool="make_tracks_file", base_command=["make_tracks_file"], inputs=[ToolInput(tag="in_track_files", input_type=Array(t=String(), optional=True), prefix="--trackFiles", doc=InputDocumentation(doc="Files to use in for the tracks. The ending of the file\nis used to define the type of track. E.g. `.bw` for\nbigwig, `.bed` for bed etc. For a arcs or links file,\nthe file ending recognized is `.arcs` or `.links`\n(default: None)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="file, -o output file\nFile to save the tracks (default: None)")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_etc_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="file, -o output file\nFile to save the tracks (default: None)"))], container="quay.io/biocontainers/pygenometracks:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Tracks_File_V0_1_0().translate("wdl")

