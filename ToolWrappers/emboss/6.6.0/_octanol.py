from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Octanol_V0_1_0 = CommandToolBuilder(tool="_octanol", base_command=["_octanol"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="datafile   [Ewhite-wimley.dat] White-Wimley data file")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="-width", doc=InputDocumentation(doc="integer    [19] Window size (Integer from 1 to 200)")), ToolInput(tag="in_plot_octanol", input_type=Boolean(optional=True), prefix="-plotoctanol", doc=InputDocumentation(doc="boolean    [N] Display the octanol plot")), ToolInput(tag="in_plot_interface", input_type=Boolean(optional=True), prefix="-plotinterface", doc=InputDocumentation(doc="boolean    [N] Display the interface plot"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Octanol_V0_1_0().translate("wdl", allow_empty_container=True)

