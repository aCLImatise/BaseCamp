from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ncbi_Extract_Entrez2Gene_Py_V0_1_0 = CommandToolBuilder(tool="ncbi_extract_entrez2gene.py", base_command=["ncbi_extract_entrez2gene.py"], inputs=[ToolInput(tag="in_gene_two_acc_file", input_type=File(optional=True), prefix="--gene2acc-file", doc=InputDocumentation(doc="Path of gene2accession.gz file (from\nftp://ftp.ncbi.nlm.nih.gov/gene/DATA), or a filtered version\nthereof.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging messages to ``stderr``.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path of log file. If not specified, print to stdout.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress all output except warnings and errors.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output. Ignored if ``--quiet`` is specified."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging messages to ``stderr``."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbi_Extract_Entrez2Gene_Py_V0_1_0().translate("wdl", allow_empty_container=True)

