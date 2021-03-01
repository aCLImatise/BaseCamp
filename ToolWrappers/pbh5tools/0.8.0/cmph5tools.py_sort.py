from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory

Cmph5Tools_Py_Sort_V0_1_0 = CommandToolBuilder(tool="cmph5tools.py_sort", base_command=["cmph5tools.py", "sort"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="output filename")), ToolInput(tag="in_deep", input_type=Boolean(optional=True), prefix="--deep", doc=InputDocumentation(doc="whether a deep sorting should be conducted, i.e. sort\ntheAlignmentArrays [False]")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpDir", doc=InputDocumentation(doc="temporary directory to use when sorting in-place [/tmp]")), ToolInput(tag="in_use_python_indexer", input_type=Boolean(optional=True), prefix="--usePythonIndexer", doc=InputDocumentation(doc="Whether to use native indexing [False].")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--inPlace", doc=InputDocumentation(doc="Whether to make a temporary copy of the original cmp.h5\nfile before sorting.\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmph5Tools_Py_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

