from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int

Phyluce_Align_Get_Aligns_Partitioned_By_Cluster_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_aligns_partitioned_by_cluster", base_command=["phyluce_align_get_aligns_partitioned_by_cluster"], inputs=[ToolInput(tag="in_directory_containing_files", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignment files")), ToolInput(tag="in_cluster_csv", input_type=File(optional=True), prefix="--cluster-csv", doc=InputDocumentation(doc="The cluster CSV file")), ToolInput(tag="in_output_directory_hold", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="An output directory to hold the converted alignments.")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores to use.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in__clustercsv", input_type=String(), position=0, doc=InputDocumentation(doc="--cluster-csv")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,phylip-relaxed,phylip-sequential,clustal,emboss,stockholm}]"))], outputs=[ToolOutput(tag="out_output_directory_hold", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_hold", type_hint=File()), doc=OutputDocumentation(doc="An output directory to hold the converted alignments."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Aligns_Partitioned_By_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

