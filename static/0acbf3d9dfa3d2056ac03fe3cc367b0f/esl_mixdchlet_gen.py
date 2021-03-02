from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Esl_Mixdchlet_Gen_V0_1_0 = CommandToolBuilder(tool="esl_mixdchlet_gen", base_command=["esl-mixdchlet", "gen"], inputs=[ToolInput(tag="in_set_random_seed", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": set random number seed  [0]")), ToolInput(tag="in_number_counts_vector", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc=": number of counts per vector  [100]")), ToolInput(tag="in_number_countvectors_generate", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc=": number of countvectors to generate  [1000]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Mixdchlet_Gen_V0_1_0().translate("wdl")

