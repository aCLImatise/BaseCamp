from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Phyluce_Assembly_Get_Bed_For_Genome_Enabled_Taxon_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_get_bed_for_genome_enabled_taxon", base_command=["phyluce_assembly_get_bed_for_genome_enabled_taxon"], inputs=[ToolInput(tag="in_locus_db", input_type=String(optional=True), prefix="--locus-db", doc=InputDocumentation(doc="The probe.matches.sqlite database")), ToolInput(tag="in_lastz_file_use", input_type=File(optional=True), prefix="--lastz-file", doc=InputDocumentation(doc="The lastz file to use")), ToolInput(tag="in_tax_on_name", input_type=String(optional=True), prefix="--taxon-name", doc=InputDocumentation(doc="The taxon name to search for in probe.matches.sqlite")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output BED file to create")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_regex", input_type=String(optional=True), prefix="--regex", doc=InputDocumentation(doc="A regular expression to apply to the probe names for\nreplacement [default='^(uce-\d+)(?:_p\d+.*)'].\n")), ToolInput(tag="in__taxonname", input_type=String(), position=0, doc=InputDocumentation(doc="--taxon-name")), ToolInput(tag="in_var_8", input_type=String(), position=0, doc=InputDocumentation(doc="[--verbosity {INFO,WARN,CRITICAL}]"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="The output BED file to create"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Get_Bed_For_Genome_Enabled_Taxon_V0_1_0().translate("wdl", allow_empty_container=True)

