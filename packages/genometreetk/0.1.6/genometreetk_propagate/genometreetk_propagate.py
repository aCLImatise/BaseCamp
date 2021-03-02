from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genometreetk_Propagate_V0_1_0 = CommandToolBuilder(tool="genometreetk_propagate", base_command=["genometreetk", "propagate"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_input_taxonomy", input_type=String(), position=0, doc=InputDocumentation(doc="input taxonomy file")), ToolInput(tag="in_metadata_file", input_type=String(), position=1, doc=InputDocumentation(doc="metadata file for all genomes in the GTDB")), ToolInput(tag="in_output_taxonomy", input_type=String(), position=2, doc=InputDocumentation(doc="output taxonomy file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Propagate_V0_1_0().translate("wdl", allow_empty_container=True)

