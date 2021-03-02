from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Nglview_V0_1_0 = CommandToolBuilder(tool="nglview", base_command=["nglview"], inputs=[ToolInput(tag="in_crd", input_type=File(optional=True), prefix="--crd", doc=InputDocumentation(doc="coordinate filename")), ToolInput(tag="in_browser", input_type=String(optional=True), prefix="--browser", doc=InputDocumentation(doc="web browser")), ToolInput(tag="in_j_exe", input_type=File(optional=True), prefix="--jexe", doc=InputDocumentation(doc="jupyter path")), ToolInput(tag="in_notebook_name", input_type=String(optional=True), prefix="--notebook-name", doc=InputDocumentation(doc="notebook name")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="port number")), ToolInput(tag="in_remote", input_type=Boolean(optional=True), prefix="--remote", doc=InputDocumentation(doc="create remote notebook")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="delete temp file after closing notebook")), ToolInput(tag="in_auto", input_type=Boolean(optional=True), prefix="--auto", doc=InputDocumentation(doc="Run 1st cell right after openning notebook")), ToolInput(tag="in_symlink", input_type=Boolean(optional=True), prefix="--symlink", doc=InputDocumentation(doc="Create symlink for nglview-js-widgets (developer mode)")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="command could be a topology filename (.pdb, .mol2,\n.parm7, ...) or could be a python script (.py), a\nnotebook (.ipynb). If not given, a notebook will be\ncreated with only nglview imported")), ToolInput(tag="in_t_raj", input_type=String(), position=1, doc=InputDocumentation(doc="coordinate filename, optional"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nglview_V0_1_0().translate("wdl", allow_empty_container=True)

