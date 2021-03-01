from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Run_Arriba_Sh_V0_1_0 = CommandToolBuilder(tool="run_arriba.sh", base_command=["run_arriba.sh"], inputs=[ToolInput(tag="in_star_genome_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/arriba:2.1.0--hd2e4403_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Arriba_Sh_V0_1_0().translate("wdl")

