from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Ncbi_Py_Tbl_Transfer_V0_1_0 = CommandToolBuilder(tool="ncbi.py_tbl_transfer", base_command=["ncbi.py", "tbl_transfer"], inputs=[ToolInput(tag="in_oob_clip", input_type=Boolean(optional=True), prefix="--oob_clip", doc=InputDocumentation(doc="Out of bounds feature behavior. False: drop all\nfeatures that are completely or partly out of bounds\nTrue: drop all features completely out of bounds but\ntruncate any features that are partly out of bounds")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Input sequence of reference genome")), ToolInput(tag="in_ref_tbl", input_type=String(), position=1, doc=InputDocumentation(doc="Input reference annotations (NCBI TBL format)")), ToolInput(tag="in_alt_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="Input sequence of new genome")), ToolInput(tag="in_out_tbl", input_type=String(), position=3, doc=InputDocumentation(doc="Output file with transferred annotations"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbi_Py_Tbl_Transfer_V0_1_0().translate("wdl", allow_empty_container=True)

