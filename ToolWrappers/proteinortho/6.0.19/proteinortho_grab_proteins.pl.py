from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Proteinortho_Grab_Proteins_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho_grab_proteins.pl", base_command=["proteinortho_grab_proteins.pl"], inputs=[ToolInput(tag="in_to_files", input_type=Boolean(optional=True), prefix="-tofiles", doc=InputDocumentation(doc="print everything to files instead of stdout files are called OrthoGroup**.fasta for a proteinortho.tsv file")), ToolInput(tag="in_enables_regex_matching", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="enables regex matching otherwise the string is escaped (e.g. | -> \|)")), ToolInput(tag="in_exact", input_type=Boolean(optional=True), prefix="-exact", doc=InputDocumentation(doc="search patters are extended with a \b, that indicates end of word.")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="-source", doc=InputDocumentation(doc="adds the filename (FASTA1,...) to the found gene-name")), ToolInput(tag="in_char_delimiter_is", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="char delimiter for multiple identifier if QUERY is a string input (default: ',')")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="proteinortho.tsv FILE or search STRING or '-' for STDIN:\na)      proteinortho output file (.tsv). This uses by default the -exact option.\nb)      string of one identifier e.g. 'tr|asd3|asd' OR multiple identifier separated by ',' (-F=)")), ToolInput(tag="in_mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg", input_type=String(), position=0, doc=InputDocumentation(doc=">BDNF15 Brain derived neurotrophic factor OS=human(...)")), ToolInput(tag="in_mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn", input_type=String(), position=1, doc=InputDocumentation(doc="The second hit BDNF15 is reported since it also contains 'BDNF1' as a substring. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Grab_Proteins_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

