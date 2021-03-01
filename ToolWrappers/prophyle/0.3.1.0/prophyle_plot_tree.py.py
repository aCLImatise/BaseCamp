from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Prophyle_Plot_Tree_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_plot_tree.py", base_command=["prophyle_plot_tree.py"], inputs=[ToolInput(tag="in_attribute_print_node", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="attribute to print with each node (e.g., sci_name)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Plot_Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

