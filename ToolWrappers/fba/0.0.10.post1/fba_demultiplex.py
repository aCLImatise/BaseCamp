from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Float, Boolean

Fba_Demultiplex_V0_1_0 = CommandToolBuilder(tool="fba_demultiplex", base_command=["fba", "demultiplex"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="specify an input file (feature count matrix). The\noutput of `count`")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="specify a output directory. Default (./demultiplexed)")), ToolInput(tag="in_specify_demultiplexing_method", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="specify demultiplexing method. '1': Stoeckius et al.\n2018. Default (1)")), ToolInput(tag="in_quantile", input_type=Float(optional=True), prefix="--quantile", doc=InputDocumentation(doc="specify quantile cutoff for the probability mass\nfunction. Default (0.9999)")), ToolInput(tag="in_clustering_method", input_type=String(optional=True), prefix="--clustering_method", doc=InputDocumentation(doc="specify inital clustering method. Default (kmedoids)")), ToolInput(tag="in_visualization", input_type=Boolean(optional=True), prefix="--visualization", doc=InputDocumentation(doc="specify to visualize demultiplexing result")), ToolInput(tag="in_visualization_method", input_type=String(optional=True), prefix="--visualization_method", doc=InputDocumentation(doc="specify embedding method for visualization (works if\n'-v' is given). Default (tsne)\n"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="specify a output directory. Default (./demultiplexed)"))], container="quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fba_Demultiplex_V0_1_0().translate("wdl")

