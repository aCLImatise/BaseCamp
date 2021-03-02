from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Evaluator_V0_1_0 = CommandToolBuilder(tool="evaluator", base_command=["evaluator"], inputs=[ToolInput(tag="in_genome_gff", input_type=File(optional=True), prefix="-genome_gff", doc=InputDocumentation(doc="Specify the maker gff file to evaluate.")), ToolInput(tag="in_model_gff", input_type=Boolean(optional=True), prefix="-model_gff", doc=InputDocumentation(doc="<file>  Specify the external gff file to evaluate.")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="<file>  Specify the genome fasta file.  This if optional if the\nfasta entries are also found in the gff file.")), ToolInput(tag="in_rm_off", input_type=Boolean(optional=True), prefix="-RM_off", doc=InputDocumentation(doc="|R           Turns all repeat masking off.")), ToolInput(tag="in_retry", input_type=Boolean(optional=True), prefix="-retry", doc=InputDocumentation(doc="<integer>  Rerun failed contigs up to the specified count.")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="-cpus", doc=InputDocumentation(doc="|c  <integer>  Tells how many cpus to use for BLAST analysis.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="|f            Forces program to delete old files before running again.\nThis will require all blast analyses to be rerun.")), ToolInput(tag="in_again", input_type=Boolean(optional=True), prefix="-again", doc=InputDocumentation(doc="|a            Caculate all output files again even if no settings have")), ToolInput(tag="in_ctl", input_type=Boolean(optional=True), prefix="-CTL", doc=InputDocumentation(doc="Generate empty control files in the current directory.")), ToolInput(tag="in_changed_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-quiet|q            Silences most of the status messages."))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluator_V0_1_0().translate("wdl")

