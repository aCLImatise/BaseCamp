from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Snaptools_Snap_Add_Gmat_V0_1_0 = CommandToolBuilder(tool="snaptools_snap_add_gmat", base_command=["snaptools", "snap-add-gmat"], inputs=[ToolInput(tag="in_snap_file", input_type=File(optional=True), prefix="--snap-file", doc=InputDocumentation(doc="snap file. (default: None)")), ToolInput(tag="in_gene_file", input_type=File(optional=True), prefix="--gene-file", doc=InputDocumentation(doc="bed file contains genes. (default: None)")), ToolInput(tag="in_buffer_size", input_type=Int(optional=True), prefix="--buffer-size", doc=InputDocumentation(doc="max number of barcodes be stored in the memory.\n(default: 1000)")), ToolInput(tag="in_tmp_folder", input_type=Directory(optional=True), prefix="--tmp-folder", doc=InputDocumentation(doc="a directory to store temporary files. If not given,\nsnaptools will automatically generate a temporary\nlocation to store temporary files. (default: None)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="a boolen tag indicates output the progress. (default:\nTrue)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snaptools_Snap_Add_Gmat_V0_1_0().translate("wdl", allow_empty_container=True)

