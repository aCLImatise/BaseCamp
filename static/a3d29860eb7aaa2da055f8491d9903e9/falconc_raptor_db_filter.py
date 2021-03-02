from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_Raptor_Db_Filter_V0_1_0 = CommandToolBuilder(tool="falconc_raptor_db_filter", base_command=["falconc", "raptor-db-filter"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_blacklistfn_string_set", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --blacklist-fn=  string  ''  set blacklist_fn"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Raptor_Db_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

