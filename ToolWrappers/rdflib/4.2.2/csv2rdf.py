from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Csv2Rdf_V0_1_0 = CommandToolBuilder(tool="csv2rdf", base_command=["csv2rdf"], inputs=[ToolInput(tag="in_read_config_iniconfig", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="to read config from a .ini/config file - the file must contain one"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csv2Rdf_V0_1_0().translate("wdl", allow_empty_container=True)

