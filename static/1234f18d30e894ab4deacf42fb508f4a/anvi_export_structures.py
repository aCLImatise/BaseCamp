from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Anvi_Export_Structures_V0_1_0 = CommandToolBuilder(tool="anvi_export_structures", base_command=["anvi-export-structures"], inputs=[ToolInput(tag="in_anvio_structure_database", input_type=String(optional=True), prefix="--structure-db", doc=InputDocumentation(doc="Anvi'o structure database. (default: None)")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory path for output files (default: None)")), ToolInput(tag="in_gene_caller_ids", input_type=String(optional=True), prefix="--gene-caller-ids", doc=InputDocumentation(doc="Gene caller ids. Multiple of them can be declared\nseparated by a delimiter (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\nyou will get all genes matching your other filtering\ncriteria. In other programs, you may get everything,\nnothing, or an error. It really depends on the\nsituation. Fortunately, mistakes are cheap, so it's\nworth a try. (default: None)")), ToolInput(tag="in_genes_of_interest", input_type=File(optional=True), prefix="--genes-of-interest", doc=InputDocumentation(doc="A file with anvi'o gene caller IDs. There should be\nonly one column in the file, and each line should\ncorrespond to a unique gene caller id (without a\ncolumn header). (default: None)")), ToolInput(tag="in__can_provide", input_type=String(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_protein_structure_txt", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-export-structures`:"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory path for output files (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_Structures_V0_1_0().translate("wdl")

