from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File, Directory

Maf_Extract_Ranges_Indexed_Py_V0_1_0 = CommandToolBuilder(tool="maf_extract_ranges_indexed.py", base_command=["maf_extract_ranges_indexed.py"], inputs=[ToolInput(tag="in_min_cols", input_type=Int(optional=True), prefix="--mincols", doc=InputDocumentation(doc="Minimum length (columns) required for alignment to be\noutput")), ToolInput(tag="in_chop", input_type=Boolean(optional=True), prefix="--chop", doc=InputDocumentation(doc="Should blocks be chopped to only portion overlapping\n(no by default)")), ToolInput(tag="in_src", input_type=String(optional=True), prefix="--src", doc=InputDocumentation(doc="Use this src for all intervals")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prepend this to each src before lookup")), ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Write each interval as a separate file in this")), ToolInput(tag="in_use_cache", input_type=Boolean(optional=True), prefix="--usecache", doc=InputDocumentation(doc="Use a cache that keeps blocks of the MAF files in\nmemory (requires ~20MB per MAF)\n")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="-S, --strand          Strand is included as an additional column, and the"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Extract_Ranges_Indexed_Py_V0_1_0().translate("wdl")

