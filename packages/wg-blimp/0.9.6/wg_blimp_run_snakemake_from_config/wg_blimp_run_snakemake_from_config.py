from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Wg_Blimp_Run_Snakemake_From_Config_V0_1_0 = CommandToolBuilder(tool="wg_blimp_run_snakemake_from_config", base_command=["wg-blimp", "run-snakemake-from-config"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Only dry-run the workflow.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The maximum number of cores to use for running the\npipeline. Cores per job are set in configuration file.\n[required]")), ToolInput(tag="in_config_yaml", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wg_Blimp_Run_Snakemake_From_Config_V0_1_0().translate("wdl", allow_empty_container=True)

