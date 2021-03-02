from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Falconc_Phasr_V0_1_0 = CommandToolBuilder(tool="falconc_phasr", base_command=["falconc", "phasr"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__alnfn_string", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="=, --aln-fn=      string  REQUIRED  BAM alignment, sorted on 'coordinate'")), ToolInput(tag="in__reffn_string", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="=, --ref-fn=      string  REQUIRED  FASTA reference")), ToolInput(tag="in__outfn_string", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-fn=      string  REQUIRED  Output file name")), ToolInput(tag="in_iterations_int_number", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --iterations=  int     1000      Number of phasing iterations per read")), ToolInput(tag="in_kmersize_int_size", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="=, --kmersize=    int     21        Kmer size")), ToolInput(tag="in__delta_float", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="=, --delta=       float   0.75      Frequency cut")), ToolInput(tag="in_p_has_r", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out__outfn_string", output_type=File(optional=True), selector=InputSelector(input_to_select="in__outfn_string", type_hint=File()), doc=OutputDocumentation(doc="=, --out-fn=      string  REQUIRED  Output file name"))], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Phasr_V0_1_0().translate("wdl")

