from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lordec_Sge_Slurm_Wrapper_Sh_V0_1_0 = CommandToolBuilder(tool="lordec_sge_slurm_wrapper.sh", base_command=["lordec_sge_slurm_wrapper.sh"], inputs=[ToolInput(tag="in_slur_m", input_type=Boolean(optional=True), prefix="--slurm", doc=InputDocumentation(doc="[-J nb_jobs | -N nb_reads_per_job] -P parallel_env_name -B lordec-build-SR-graph_PATH -C lordec-correct_PATH [-Q QUEUE_NAME] [-W NB_MINUTES_MAX] lordec_options..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lordec_Sge_Slurm_Wrapper_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

