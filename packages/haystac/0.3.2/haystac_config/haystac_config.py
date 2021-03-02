from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Haystac_Config_V0_1_0 = CommandToolBuilder(tool="haystac_config", base_command=["haystac", "config"], inputs=[ToolInput(tag="in_cache", input_type=File(optional=True), prefix="--cache", doc=InputDocumentation(doc="Cache folder for storing genomes downloaded from NCBI\nand other shared data (default: /root/haystac/cache)")), ToolInput(tag="in_clear_cache", input_type=Boolean(optional=True), prefix="--clear-cache", doc=InputDocumentation(doc="Clear the contents of the cache folder, and delete the\nfolder itself (default: False)")), ToolInput(tag="in_api_key", input_type=Int(optional=True), prefix="--api-key", doc=InputDocumentation(doc="Personal NCBI API key (increases max concurrent requests\nfrom 3 to 10,\nhttps://www.ncbi.nlm.nih.gov/account/register/)")), ToolInput(tag="in_use_cond_a", input_type=Boolean(optional=True), prefix="--use-conda", doc=InputDocumentation(doc="Use conda as a package manger (default: False)"))], outputs=[], container="quay.io/biocontainers/haystac:0.3.2--py36_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haystac_Config_V0_1_0().translate("wdl")

