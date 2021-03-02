from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Pygmes_V0_1_0 = CommandToolBuilder(tool="pygmes", base_command=["pygmes"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="path to the fasta file, or in metagenome mode path to\nbin folder")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the output folder")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Path to the diamond DB")), ToolInput(tag="in_no_clean", input_type=Boolean(optional=True), prefix="--noclean", doc=InputDocumentation(doc="GeneMark-ES needs clean fasta headers and will fail if\nyou dont proveide them. Set this flag if you don't\nwant pygmes to clean your headers")), ToolInput(tag="in_cleanup", input_type=Boolean(optional=True), prefix="--cleanup", doc=InputDocumentation(doc="Delete everything but the output files")), ToolInput(tag="in_n_cores", input_type=Int(optional=True), prefix="--ncores", doc=InputDocumentation(doc="Number of threads to use with GeneMark-ES and Diamond")), ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Run in metaegnomic mode")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Silcence most output")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug and thus ignore safety"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the output folder"))], container="quay.io/biocontainers/pygmes:0.1.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pygmes_V0_1_0().translate("wdl")

