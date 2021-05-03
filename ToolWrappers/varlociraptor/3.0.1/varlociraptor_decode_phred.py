from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varlociraptor_Decode_Phred_V0_1_0 = CommandToolBuilder(tool="varlociraptor_decode_phred", base_command=["varlociraptor", "decode-phred"], inputs=[ToolInput(tag="in_var_loci_raptor", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Decode_Phred_V0_1_0().translate("wdl")

