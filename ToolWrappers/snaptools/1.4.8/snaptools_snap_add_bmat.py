from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Directory

Snaptools_Snap_Add_Bmat_V0_1_0 = CommandToolBuilder(tool="snaptools_snap_add_bmat", base_command=["snaptools", "snap-add-bmat"], inputs=[ToolInput(tag="in_snap_file", input_type=File(optional=True), prefix="--snap-file", doc=InputDocumentation(doc="snap file. (default: None)")), ToolInput(tag="in_bin_size_list", input_type=Array(t=String(), optional=True), prefix="--bin-size-list", doc=InputDocumentation(doc="a list of bin size(s) to create the cell-by-bin count\nmatrix. The genome will be divided into bins of the\nequal size of --bin-size-list to create the cell x bin\ncount matrix. If more than one bin size are given,\nsnaptools will generate a list of cell x bin matrices\nof different resolutions and stored in the same snap\nfile. (default: [5000])")), ToolInput(tag="in_tmp_folder", input_type=Directory(optional=True), prefix="--tmp-folder", doc=InputDocumentation(doc="a directory to store temporary files. If not given,\nsnaptools will automatically generate a temporary\nlocation to store temporary files. (default: None)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="a boolen tag indicates output the progress. (default:\nTrue)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snaptools_Snap_Add_Bmat_V0_1_0().translate("wdl", allow_empty_container=True)

