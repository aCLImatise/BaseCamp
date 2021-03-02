from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Traitar_Annotate_V0_1_0 = CommandToolBuilder(tool="traitar_annotate", base_command=["traitar", "annotate"], inputs=[ToolInput(tag="in_gene_gff_type", input_type=String(optional=True), prefix="--gene_gff_type", doc=InputDocumentation(doc="if the input is amino acids the type of gene\nprediction GFF file can be specified for mapping the\nphenotype predictions to the genes")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of cpus used for the individual steps; maximum\nis number of samples; needs parallel\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_input_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory with the input data")), ToolInput(tag="in_sample_two_file", input_type=Int(), position=2, doc=InputDocumentation(doc="mapping from samples to fasta files (also see gitHub\nhelp): sample1_file_name{tab}sample1_name\nsample2_file_name{tab}sample2_name")), ToolInput(tag="in_directory_output_created", input_type=String(), position=0, doc=InputDocumentation(doc="directory for the output; will be created if it\ndoesn't exist yet"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

