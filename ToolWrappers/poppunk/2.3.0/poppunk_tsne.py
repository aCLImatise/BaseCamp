from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Poppunk_Tsne_V0_1_0 = CommandToolBuilder(tool="poppunk_tsne", base_command=["poppunk_tsne"], inputs=[ToolInput(tag="in_distances", input_type=File(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle and numpy file of pre-\ncalculated distances")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file")), ToolInput(tag="in_perplexity", input_type=Int(optional=True), prefix="--perplexity", doc=InputDocumentation(doc="Perplexity used to generate t-SNE projection [default\n= 30]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Verbosity level for t-SNE (0-3) [default = 0]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file"))], container="quay.io/biocontainers/poppunk:2.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Tsne_V0_1_0().translate("wdl")

