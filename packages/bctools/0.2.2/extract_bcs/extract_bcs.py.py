from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Extract_Bcs_Py_V0_1_0 = CommandToolBuilder(tool="extract_bcs.py", base_command=["extract_bcs.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write results to this file.")), ToolInput(tag="in_bcs", input_type=File(optional=True), prefix="--bcs", doc=InputDocumentation(doc="Write barcodes to this file in FASTQ format.")), ToolInput(tag="in_fast_a_barcodes", input_type=Boolean(optional=True), prefix="--fasta-barcodes", doc=InputDocumentation(doc="Save extracted barcodes in FASTA format.")), ToolInput(tag="in_add_bc_to_fast_q", input_type=Boolean(optional=True), prefix="--add-bc-to-fastq", doc=InputDocumentation(doc="Append extracted barcodes to the FASTQ headers.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print lots of debugging information")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to fastq file.")), ToolInput(tag="in_pattern", input_type=String(), position=1, doc=InputDocumentation(doc="Pattern of barcode nucleotides starting at 5'-end. X\npositions will be moved to the header, N positions\nwill be kept."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Bcs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

