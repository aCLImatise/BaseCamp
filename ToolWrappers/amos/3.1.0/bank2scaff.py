from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Bank2Scaff_V0_1_0 = CommandToolBuilder(tool="bank2scaff", base_command=["bank2scaff"], inputs=[ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_use_eids_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use EIDs for names (DEFAULT)")), ToolInput(tag="in_use_iids_names", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Use IIDs for names")), ToolInput(tag="in_print_just_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Print just the contig eids listed in file")), ToolInput(tag="in_print_just_contig", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Print just the contig iids listed in file")), ToolInput(tag="in_show_ungapped_lengths", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Show the ungapped contig lengths in the scaff file")), ToolInput(tag="in_create_arachne_links", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Create a Arachne links file")), ToolInput(tag="in_print_scaffold_sequences", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Print the scaffold consensus sequences in multi-fasta format")), ToolInput(tag="in_use_estimated_size", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Use the estimated gaps size to space contigs")), ToolInput(tag="in_join_contigs_spaced", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="Join contigs spaced by less than 2 bp (needs -f, if G provided overrides 2)")), ToolInput(tag="in_gaps_val_have", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="Gaps < val will have val N's between them (-g)")), ToolInput(tag="in_specify_number_place", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="Specify number of N's to place between contigs")), ToolInput(tag="in_bank_two_sc_aff", input_type=Int(), position=0, doc=InputDocumentation(doc="[options]  <bank path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Scaff_V0_1_0().translate("wdl", allow_empty_container=True)

