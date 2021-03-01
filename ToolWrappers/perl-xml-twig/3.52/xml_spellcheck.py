from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Xml_Spellcheck_V0_1_0 = CommandToolBuilder(tool="xml_spellcheck", base_command=["xml_spellcheck"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="Gets the options from a configuration file. NOT IMPLEMENTED YET.")), ToolInput(tag="in_spell_checker", input_type=String(optional=True), prefix="--spellchecker", doc=InputDocumentation(doc="The command to use for spell checking, including any option\nBy default 'aspell -c' is used")), ToolInput(tag="in_backup_extension", input_type=File(optional=True), prefix="--backup-extension", doc=InputDocumentation(doc="By default the original file is saved with a '.bak' extension. This\noption changes the extension")), ToolInput(tag="in_attributes", input_type=Boolean(optional=True), prefix="--attributes", doc=InputDocumentation(doc="Spell check attribute content. By default attribute values are NOT\nspell checked. NOT YET IMPLEMENTED")), ToolInput(tag="in_exclude_elements", input_type=String(optional=True), prefix="--exclude_elements", doc=InputDocumentation(doc="A list of elements that should not be spell checked")), ToolInput(tag="in_include_elements", input_type=String(optional=True), prefix="--include_elements", doc=InputDocumentation(doc="A list of elements that should be spell checked (by default all\nelements are spell checked).\n'--exclude_elements' and '--include_elements' are mutually exclusive")), ToolInput(tag="in_pretty_print", input_type=String(optional=True), prefix="--pretty_print", doc=InputDocumentation(doc="A pretty print style for the document, as defined in XML::Twig. If\nthe option is provided without a value then the 'indented' style is\nused")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Display longer help message and exit\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xml_Spellcheck_V0_1_0().translate("wdl", allow_empty_container=True)

