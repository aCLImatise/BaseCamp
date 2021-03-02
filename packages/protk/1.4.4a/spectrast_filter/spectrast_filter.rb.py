from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Spectrast_Filter_Rb_V0_1_0 = CommandToolBuilder(tool="spectrast_filter.rb", base_command=["spectrast_filter.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_binary_output", input_type=Boolean(optional=True), prefix="--binary-output", doc=InputDocumentation(doc="Produce spectral libraries in binary format rather than ASCII [false]")), ToolInput(tag="in_predicate", input_type=String(optional=True), prefix="--predicate", doc=InputDocumentation(doc="Keep only spectra satifying predicate pred. Should be a C-style predicate")), ToolInput(tag="in_merge", input_type=File(optional=True), prefix="--merge", doc=InputDocumentation(doc="How to combine multiple splib files (if provided). Options are U,S,H\nU: Union. Include all the peptide ions in all the files.\nS: Subtraction. Only include peptide ions in the first file\nthat are not present in any of the other files.\nH: Subtraction of homologs. Only include peptide ions in the\nfirst file that do not have any homologs with\nsame charge and similar m/z in any of the other files.\nA: Appending. Each peptide ion is added from only one library:\nthe first file in the argument list that contains that peptide ion.\nUseful for keeping existing consensus spectra unchanged while adding\nonly previously unseen peptide ions. [U]")), ToolInput(tag="in_replicates", input_type=String(optional=True), prefix="--replicates", doc=InputDocumentation(doc="How to derive a single spectrum from replicates. Options are None, C,B\nC: Consensus. Create the consensus spectrum of all replicate spectra of each peptide ion.\nB: Best replicate. Pick the best replicate of each peptide ion. [None]\n")), ToolInput(tag="in_file_one_dots_plib", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectrast_Filter_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

