from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Paladin_Prepare_V0_1_0 = CommandToolBuilder(tool="paladin_prepare", base_command=["paladin", "prepare"], inputs=[ToolInput(tag="in_reference_database_uniprotkb", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<#>         Reference Database:\n1: UniProtKB Reviewed (Swiss-Prot)\n2: UniProtKB Clustered 90% (UniRef90)")), ToolInput(tag="in_skip_download_use", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Skip download, use local copy of reference database (may be indexed)")), ToolInput(tag="in_http_socks_proxy", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc="HTTP or SOCKS proxy address"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paladin_Prepare_V0_1_0().translate("wdl", allow_empty_container=True)

