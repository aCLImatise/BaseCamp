from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snakemake_Bash_Completion_V0_1_0 = CommandToolBuilder(tool="snakemake_bash_completion", base_command=["snakemake-bash-completion"], inputs=[], outputs=[], container="quay.io/biocontainers/snakemake-minimal:6.1.0--pyhdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snakemake_Bash_Completion_V0_1_0().translate("wdl")

