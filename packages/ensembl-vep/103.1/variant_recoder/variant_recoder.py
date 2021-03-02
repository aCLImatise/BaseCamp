from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Variant_Recoder_V0_1_0 = CommandToolBuilder(tool="variant_recoder", base_command=["variant_recoder"], inputs=[ToolInput(tag="in_input_data", input_type=Boolean(optional=True), prefix="--input_data", doc=InputDocumentation(doc="Input as string")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="--species", doc=InputDocumentation(doc="[species]    Species to use [default: 'human']")), ToolInput(tag="in_pretty", input_type=Boolean(optional=True), prefix="--pretty", doc=InputDocumentation(doc="Print prettified JSON"))], outputs=[], container="quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variant_Recoder_V0_1_0().translate("wdl")

