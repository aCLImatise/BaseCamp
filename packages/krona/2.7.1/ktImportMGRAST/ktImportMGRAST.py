from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportmgrast_V0_1_0 = CommandToolBuilder(tool="ktImportMGRAST", base_command=["ktImportMGRAST"], inputs=[ToolInput(tag="in_mgr_ast_table", input_type=String(), position=0, doc=InputDocumentation(doc="A table exported from MG-RAST. It can be from organism or\nfunctional analysis, but all tables being imported should be\nconsistent. By default, separate datasets will be created for\neach input (see [-c]).")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified).\nBy default, the basename of the file will be used.\n_________")), ToolInput(tag="in_e_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[-u <string>]   URL of Krona resources to use instead of bundling them with"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportmgrast_V0_1_0().translate("wdl", allow_empty_container=True)

