from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Sketchy_Plot_V0_1_0 = CommandToolBuilder(tool="sketchy_plot", base_command=["sketchy", "plot"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to genotype feature index used in: sketchy")), ToolInput(tag="in_key", input_type=File(optional=True), prefix="--key", doc=InputDocumentation(doc="Path to genotype feature index key for translation\nfrom numeric.  [required]")), ToolInput(tag="in_s_ssh", input_type=File(optional=True), prefix="--sssh", doc=InputDocumentation(doc="Path to sum of ranked sums shared hashes data file\nfrom evaluation  [required]")), ToolInput(tag="in_ssh", input_type=File(optional=True), prefix="--ssh", doc=InputDocumentation(doc="Path to sum of shared hashes data file from")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Color palette for output plots [YlGnBu]")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output prefix for all files [sketchy]")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Output image format [png]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose logging output [false]")), ToolInput(tag="in_evaluate", input_type=String(), position=0, doc=InputDocumentation(doc="[required]")), ToolInput(tag="in_prediction", input_type=String(), position=1, doc=InputDocumentation(doc="-st, --stable INTEGER  Stability parameter passed to: sketchy evaluate"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

