from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Roary_Unique_Genes_Per_Sample_V0_1_0 = CommandToolBuilder(tool="roary_unique_genes_per_sample", base_command=["roary-unique_genes_per_sample"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [unique_genes_per_sample.tsv]")), ToolInput(tag="in_clusters_filename", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="clusters filename [clustered_proteins]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [unique_genes_per_sample.tsv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Roary_Unique_Genes_Per_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

