from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Protgraph_V0_1_0 = CommandToolBuilder(tool="protgraph", base_command=["protgraph"], inputs=[ToolInput(tag="in_num_of_entries", input_type=Int(optional=True), prefix="--num_of_entries", doc=InputDocumentation(doc="Number of entries across all files (summed). if given,\nit will an estimation of the runtime")), ToolInput(tag="in_exclude_accessions", input_type=File(optional=True), prefix="--exclude_accessions", doc=InputDocumentation(doc="A csv file only containing accessions in the first row\nwhich should be excluded for processsing. Setting this\nvalue may reduce the reading performance and therefore\nthe throughput performance overall.")), ToolInput(tag="in_num_of_processes", input_type=Int(optional=True), prefix="--num_of_processes", doc=InputDocumentation(doc="The number of processes used to process entries. Each\nprocess can process an entry individually. The default\nvalue is 'cores - 1', since one process is reserved\nfor reading entries")), ToolInput(tag="in_output_csv", input_type=File(optional=True), prefix="--output_csv", doc=InputDocumentation(doc="Set the output file, which will contain information\nabout the protein graphs (in csv) NOTE: It will write\nto 'protein_graph_statistics.csv' and overwrite if\nsuch a file exists. Default is set to the current\nworking directory")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--help_all", doc=InputDocumentation(doc="Show the complete help message for all possible")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="Files containing the Swissprot/EMBL-Entries (either in\n.dat or .txt)")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="--help_graph_generation"))], outputs=[ToolOutput(tag="out_output_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_csv", type_hint=File()), doc=OutputDocumentation(doc="Set the output file, which will contain information\nabout the protein graphs (in csv) NOTE: It will write\nto 'protein_graph_statistics.csv' and overwrite if\nsuch a file exists. Default is set to the current\nworking directory"))], container="quay.io/biocontainers/protgraph:0.1.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protgraph_V0_1_0().translate("wdl")

