from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Ensembl_Vep_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".ensembl_vep_post_link.sh", base_command=[".ensembl-vep-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ensembl_Vep_Post_Link_Sh_V0_1_0().translate("wdl")

