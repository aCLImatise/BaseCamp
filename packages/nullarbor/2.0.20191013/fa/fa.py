from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fa_V0_1_0 = CommandToolBuilder(tool="fa", base_command=["fa"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Debug info (default '0').")), ToolInput(tag="in_desc", input_type=Boolean(optional=True), prefix="--desc", doc=InputDocumentation(doc="!         Description at end (default '0').")), ToolInput(tag="in_bases", input_type=Boolean(optional=True), prefix="--bases", doc=InputDocumentation(doc="!        Base composition (implies --full) (default '0').")), ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="!         Print details for each sequence (default '0').")), ToolInput(tag="in_each", input_type=Boolean(optional=True), prefix="--each", doc=InputDocumentation(doc="!         Don't combine results of all input files into one (default '0').")), ToolInput(tag="in_minsize", input_type=Int(optional=True), prefix="--minsize", doc=InputDocumentation(doc="Minimum size to include in calcs (default '0').")), ToolInput(tag="in_widthi_max_width", input_type=Boolean(optional=True), prefix="--w", doc=InputDocumentation(doc="|width=i     Max. width of filename column (default '25').")), ToolInput(tag="in_tabbed_produce_tab", input_type=Boolean(optional=True), prefix="--t", doc=InputDocumentation(doc="|tabbed!     Produce tab delimited output table (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fa_V0_1_0().translate("wdl", allow_empty_container=True)

