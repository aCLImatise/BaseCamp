from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Drep_Bonus_V0_1_0 = CommandToolBuilder(tool="dRep_bonus", base_command=["dRep", "bonus"], inputs=[ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="threads (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="make extra debugging output (default: False)")), ToolInput(tag="in_run_tax", input_type=Boolean(optional=True), prefix="--run_tax", doc=InputDocumentation(doc="generate taxonomy information (Tdb) (default: False)")), ToolInput(tag="in_tax_method", input_type=String(optional=True), prefix="--tax_method", doc=InputDocumentation(doc="Method of determining taxonomy\npercent = The most descriptive taxonimic level with at least (per) hits\nmax     = The centrifuge taxonomic level with the most overall hits (default: percent)")), ToolInput(tag="in_percent", input_type=Int(optional=True), prefix="--percent", doc=InputDocumentation(doc="minimum percent for percent method (default: 50)")), ToolInput(tag="in_cent_index", input_type=File(optional=True), prefix="--cent_index", doc=InputDocumentation(doc="path to centrifuge index (for example,\n/home/mattolm/download/centrifuge/indices/b+h+v\n(default: None)")), ToolInput(tag="in_check_dependencies", input_type=Boolean(optional=True), prefix="--check_dependencies", doc=InputDocumentation(doc="Check if program has access to all dependencies\n(default: False)")), ToolInput(tag="in_genomes_check_format", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to check in .fasta format (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drep_Bonus_V0_1_0().translate("wdl", allow_empty_container=True)

