from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Script_Gen_Stats_For_Single_Copy_Genes_Sh_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_stats_for_single_copy_genes.sh", base_command=["anvi-script-gen_stats_for_single_copy_genes.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Stats_For_Single_Copy_Genes_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

