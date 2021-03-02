from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Var_Agg_V0_1_0 = CommandToolBuilder(tool="var_agg", base_command=["var-agg"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Decrease verbosity")), ToolInput(tag="in_io_threads", input_type=Int(optional=True), prefix="--io-threads", doc=InputDocumentation(doc="Number of additional threads to use for (de)compression in I/O. [default: 0]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="<OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write out a CSI/TBI index.")), ToolInput(tag="in_input_panel", input_type=File(optional=True), prefix="--input-panel", doc=InputDocumentation(doc="...    Path to panel file, format is 'SAMPLE<tab>SUB-\nPOPULATION<tab>POPULATION<ignored>'")), ToolInput(tag="in_input_ped", input_type=File(optional=True), prefix="--input-ped", doc=InputDocumentation(doc="...        Path to input PED file for FOUND_* INFO entries.")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="...       FAI-indexed reference FASTA file, only index will be accessed."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="<OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write out a CSI/TBI index."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Var_Agg_V0_1_0().translate("wdl", allow_empty_container=True)

