from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Normalisation_Py_V0_1_0 = CommandToolBuilder(tool="normalisation.py", base_command=["normalisation.py"], inputs=[ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num-reads", doc=InputDocumentation(doc="Number of reads per sample after normalisation")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="Abundances file to normalise (format: BIOM).")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Sequences file to normalise (format: FASTA).")), ToolInput(tag="in_output_biom", input_type=String(optional=True), prefix="--output-biom", doc=InputDocumentation(doc="Normalised abundances (format: BIOM). [Default:\nnormalisation_abundance.biom]")), ToolInput(tag="in_output_fast_a", input_type=String(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Normalised sequences (format: FASTA). [Default:\nnormalisation.fasta]")), ToolInput(tag="in_summary_file", input_type=File(optional=True), prefix="--summary-file", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nnormalisation.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="The list of commands executed.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalisation_Py_V0_1_0().translate("wdl")

