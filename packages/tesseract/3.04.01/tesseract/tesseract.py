from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Tesseract_V0_1_0 = CommandToolBuilder(tool="tesseract", base_command=["tesseract"], inputs=[ToolInput(tag="in_tess_data_dir", input_type=File(optional=True), prefix="--tessdata-dir", doc=InputDocumentation(doc="Specify the location of tessdata path.")), ToolInput(tag="in_user_words", input_type=File(optional=True), prefix="--user-words", doc=InputDocumentation(doc="Specify the location of user words file.")), ToolInput(tag="in_user_patterns", input_type=File(optional=True), prefix="--user-patterns", doc=InputDocumentation(doc="Specify the location of user patterns file.")), ToolInput(tag="in_specify_languages_used", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="[+LANG]        Specify language(s) used for OCR.")), ToolInput(tag="in_value_set_value", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="=VALUE          Set value for config variables.\nMultiple -c arguments are allowed.")), ToolInput(tag="in_psm", input_type=Int(optional=True), prefix="-psm", doc=InputDocumentation(doc="Specify page segmentation mode.")), ToolInput(tag="in_help_psm", input_type=Boolean(optional=True), prefix="--help-psm", doc=InputDocumentation(doc="Show page segmentation modes.")), ToolInput(tag="in_list_langs", input_type=Boolean(optional=True), prefix="--list-langs", doc=InputDocumentation(doc="List available languages for tesseract engine.")), ToolInput(tag="in_print_parameters", input_type=Boolean(optional=True), prefix="--print-parameters", doc=InputDocumentation(doc="Print tesseract parameters to stdout.")), ToolInput(tag="in_treat_image_single", input_type=Int(), position=0, doc=InputDocumentation(doc="Treat the image as a single character."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tesseract_V0_1_0().translate("wdl", allow_empty_container=True)

