from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Clustering_Distancematrix_R_V0_1_0 = CommandToolBuilder(tool="Clustering_DistanceMatrix.R", base_command=["Clustering_DistanceMatrix.R"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Distance matrix (tsv) Input file (required)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--outputdirectory", doc=InputDocumentation(doc="Output directory (optional, default is the same as the input directory).")), ToolInput(tag="in_cut_off_values", input_type=Int(optional=True), prefix="--cutoff_values", doc=InputDocumentation(doc="A comma separated set of cutoff values (Default: 5,10,20,50,100,200,1000)")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="TRUE or FALSE (the default). When true, the first line in the distance matrix is the header")), ToolInput(tag="in_tsv", input_type=Boolean(optional=True), prefix="--tsv", doc=InputDocumentation(doc="TRUE or FALSE (the default). When true, the distance matrix is tab seperated (else space seperated)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="TRUE or FALSE (the default). When true, existing output files will be overwritten\n"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory (optional, default is the same as the input directory)."))], container="quay.io/biocontainers/chewiesnake:3.0.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Distancematrix_R_V0_1_0().translate("wdl")

