from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Segtools_Nucleotide_Frequency_V0_1_0 = CommandToolBuilder(tool="segtools_nucleotide_frequency", base_command=["segtools-nucleotide-frequency"], inputs=[ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="Overwrite any existing output files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_quick", input_type=Boolean(optional=True), prefix="--quick", doc=InputDocumentation(doc="Compute values only for one chromosome.")), ToolInput(tag="in_replot", input_type=Boolean(optional=True), prefix="--replot", doc=InputDocumentation(doc="Load data from output tab files and regenerate plots\ninstead of recomputing data.")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--noplot", doc=InputDocumentation(doc="Do not generate any plots.")), ToolInput(tag="in_mnemonic_file", input_type=File(optional=True), prefix="--mnemonic-file", doc=InputDocumentation(doc="If specified, labels will be shown using mnemonics\nfound in FILE")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="File output directory (will be created if it does not\nexist) [default: nucleotide_frequency]")), ToolInput(tag="in_val_pass_val", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified multiple times.\n")), ToolInput(tag="in_annotation", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_data_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="File output directory (will be created if it does not\nexist) [default: nucleotide_frequency]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Nucleotide_Frequency_V0_1_0().translate("wdl", allow_empty_container=True)

